/* A simple server in the internet domain using TCP
   The port number is passed as an argument */
#include <stdio.h>
#include <stdlib.h>
#include <string.h>
#include <unistd.h>
#include <sys/types.h> 
#include <sys/socket.h>
#include <netinet/in.h>

void error(const char *msg)
{
    perror(msg);
    exit(1);
}

int main(int argc, char *argv[])
{
    int sockfd, newsockfd, portno;
    socklen_t clilen;
    char buffer[256];  // 缓冲区
    // 设置地址，类型为sockaddr_in
    struct sockaddr_in serv_addr, cli_addr;
    int n;
    if (argc < 2) {
        fprintf(stderr,"ERROR, no port provided\n");
        exit(1);
    }
    // 创建套接字
    sockfd = socket(AF_INET, SOCK_STREAM, 0);
    if (sockfd < 0) 
    error("ERROR opening socket");

    // 地址缓冲区初始化为0
    bzero((char *) &serv_addr, sizeof(serv_addr));
    // 服务器侦听端口号，atoi将数字字符串转化为整数
    portno = atoi(argv[1]);
    // 设置serv_addr 结构字段
    serv_addr.sin_family = AF_INET;
    // 服务器地址，用符号常量INADDR_ANY可以自动获取
    serv_addr.sin_addr.s_addr = INADDR_ANY;
    // 端口号，用htons将主机字节顺序的端口号转化为网络字节顺序的端口号
    serv_addr.sin_port = htons(portno);

    // 套接字与地址绑定 
    if (bind(sockfd, (struct sockaddr *) &serv_addr,
            sizeof(serv_addr)) < 0) 
            error("ERROR on binding");
    // 监听套接字的连接， 第二个参数是积压队列的大小
    listen(sockfd,5);

    // 与客户端连接，未accept之前进程处于阻塞状态。连接用新的套接字表示。
    clilen = sizeof(cli_addr);
    newsockfd = accept(sockfd, 
                (struct sockaddr *) &cli_addr, 
                &clilen);
    if (newsockfd < 0) 
        error("ERROR on accept");

    // 初始化缓冲区，客户端write()之后read才能读取，否则阻塞。
    bzero(buffer,256);
    n = read(newsockfd,buffer,255);  //套接字总字符或者255，较小者
    if (n < 0) error("ERROR reading from socket");
    printf("Here is the message: %s\n",buffer);

    // 服务器向客户端写入内容，18是消息的大小
    n = write(newsockfd,"I got your message",18);
    if (n < 0) error("ERROR writing to socket");

    close(newsockfd);
    close(sockfd);
    return 0; 
}
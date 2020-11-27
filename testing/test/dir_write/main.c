/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 13:11:31 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/26 14:01:13 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "stdio.h"
#include "unistd.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

ssize_t ft_write(int fd, const void *buf, size_t count);

int main(void)
{
	int fd;

	fd = open("test", O_WRONLY);
	char *str = "Hello, World!!!!!";
	ssize_t a = ft_write(fd, str, 5);
	//ssize_t a = write(fd, str, 5);
	printf("a: %ld\nerrno: %d\n", a, errno);
	return (0);
}

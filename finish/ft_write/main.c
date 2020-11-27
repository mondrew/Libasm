/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 13:11:31 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/28 20:48:07 by mondrew          ###   ########.fr       */
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
	char *str;
	ssize_t a;

	str = "Hello, World!!!!!";
	fd = open("test", O_WRONLY);
	a = ft_write(fd, str, 1);
	printf("my: a: %ld\nerrno: %d\n", a, errno);
	close(fd);
	fd = open("test", O_WRONLY);
	a = write(fd, str, 1);
	printf("or: a: %ld\nerrno: %d\n", a, errno);
	close(fd);
	return (0);
}

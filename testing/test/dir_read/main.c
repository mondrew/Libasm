/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 13:11:31 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/26 15:36:27 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "stdio.h"
#include "unistd.h"
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>

ssize_t ft_read(int fd, void *buf, size_t count);

int main(void)
{
	int fd;

	fd = open("test2", O_RDONLY);
	char buf[15];
	ssize_t a = ft_read(fd, buf, 5);
	//ssize_t a = read(fd, buf, 5);
	buf[a] = '\0';
	printf("a: %ld\nerrno: %d\nbuf: %s\n", a, errno, buf);
	return (0);
}

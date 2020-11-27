/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 13:11:31 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/28 21:40:29 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <unistd.h>
#include <sys/types.h>
#include <sys/stat.h>
#include <fcntl.h>
#include <errno.h>
#include <string.h>

ssize_t ft_read(int fd, void *buf, size_t count);
ssize_t ft_write(int fd, const void *buf, size_t count);
size_t	ft_strlen(const char *str);
char	*ft_strcpy(char *dest, const char *src);
int		ft_strcmp(const char *s1, const char *s2);
char	*ft_strdup(const char *str);

int		main(void)
{
/*
** ----------READ----------
**	int fd;
**	char buf[15];
**	ssize_t a;
**
**	fd = open("test2", O_RDONLY);
**	a = ft_read(fd, buf, 9);
**	buf[a] = '\0';
**	printf("my: a: %ld\nerrno: %d\nbuf: %s\n", a, errno, buf);
**	close(fd);
**	fd = open("test2", O_RDONLY);
**	a = read(fd, buf, 9);
**	buf[a] = '\0';
**	printf("or: a: %ld\nerrno: %d\nbuf: %s\n", a, errno, buf);
**	close(fd);
**
** ----------WRITE---------
**	int fd;
**	char *str;
**	ssize_t a;
**
**	str = "Hello, World!!!!!";
**	fd = open("test", O_WRONLY);
**	a = ft_write(fd, str, 1);
**	printf("my: a: %ld\nerrno: %d\n", a, errno);
**	close(fd);
**	fd = open("test", O_WRONLY);
**	a = write(fd, str, 1);
**	printf("or: a: %ld\nerrno: %d\n", a, errno);
**	close(fd);
**
** --------STRLEN----------
**
**	size_t a;
**	const char *str;
**
**	str = "Hello, WWWWWWWWWWorld!";
**	a = ft_strlen(str);
**	printf("my a: %ld\n", a);
**	a = strlen(str);
**	printf("or a: %ld\n", a);
**
** ---------STRCPY---------
**
**	char *src;
**	char *dest;
**
**	src = "Hello, World!!--!!!";
**	dest = malloc(20);
**	dest = ft_strcpy(dest, src);
**	printf("Result_m: %s\n", dest);
**	dest = strcpy(dest, src);
**	printf("Result_o: %s\n", dest);
**
** ---------STRCMP-----------
**
**	int a;
**	char *s1;
**	char *s2;
**
**	s1 = "Hello World!";
**	s2 = "Helxo World";
**	a = ft_strcmp(s1, s2);
**	printf("my a: %d\n", a);
**	a = strcmp(s1, s2);
**	printf("or a: %d\n", a);
**
** --------STRDUP--------
**
**	char *str;
**	char *new_str;
**
**	str = "Hello, World!";
**	new_str = ft_strdup(str);
**	printf("my new_str: %s\nmy errno: %d\n", new_str, errno);
**	free(new_str);
**	new_str = strdup(str);
**	printf("original new_str: %s\norig errno: %d\n", new_str, errno);
**	free(new_str);
*/
	return (0);
}

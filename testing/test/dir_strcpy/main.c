/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 15:43:03 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/27 12:39:56 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

char *ft_strcpy(char *dest, const char *src);

/*
char	*ft_strcpy(char *dest, const char *src)
{
	int i;

	i = 0;
	while (src[i] != '\0')
	{
		dest[i] = src[i];
		i++;
	}
	dest[i] = '\0';
	return (dest);
}
*/

int		main(void)
{
	char src[13];
	src[0] = 'H';
	src[1] = 'e';
	src[2] = 'l';
	src[3] = 'l';
	src[4] = 'o';
	src[5] = ',';
	src[6] = ' ';
	src[7] = 'W';
	src[8] = 'o';
	src[9] = 'r';
	src[10] = 'l';
	src[11] = 'd';
	src[12] = '!';
	char *dest = malloc(9);
	dest = ft_strcpy(dest, src);
	printf("Result: %s\n", dest);
	dest = strcpy(dest, src);
	printf("Result: %s\n", dest);
	return (0);
}

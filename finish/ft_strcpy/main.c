/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_strcpy.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 15:43:03 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/28 20:49:42 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <string.h>
#include <stdlib.h>
#include <stdio.h>

char *ft_strcpy(char *dest, const char *src);

int		main(void)
{
	char *src;
	char *dest;

	src = "Hello, World!!--!!!";
	dest = malloc(20);
	dest = ft_strcpy(dest, src);
	printf("Result_m: %s\n", dest);
	dest = strcpy(dest, src);
	printf("Result_o: %s\n", dest);
	return (0);
}

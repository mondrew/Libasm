/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 19:02:08 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/27 11:51:58 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int		ft_strcmp(const char *s1, const char *s2);

/*
int		ft_strcmp(const char *s1, const char *s2)
{
	int res;
	int i;

	i = 0;
	res = 0;
	while (res == 0 && s1[i] && s2[i])
	{
		res = s1[i] - s2[i];
		i++;
	}
	res = s1[i] - s2[i];
	return (res);
}
*/

int		main(void)
{
	int a = 0;

	char *s1 = "Hello World!";
	char *s2 = "Helxo World";
	a = strcmp(s1, s2);
	printf("a: %d\n", a);
	a = ft_strcmp(s1, s2);
	printf("a: %d\n", a);
	return (0);
}

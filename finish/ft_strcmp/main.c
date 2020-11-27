/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/26 19:02:08 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/28 20:50:58 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

int		ft_strcmp(const char *s1, const char *s2);

int		main(void)
{
	int a;
	char *s1;
	char *s2;

	s1 = "Hello World!";
	s2 = "Helxo World";
	a = ft_strcmp(s1, s2);
	printf("my a: %d\n", a);
	a = strcmp(s1, s2);
	printf("or a: %d\n", a);
	return (0);
}

/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   main.c                                             :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mondrew <marvin@42.fr>                     +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2020/07/25 16:49:32 by mondrew           #+#    #+#             */
/*   Updated: 2020/07/28 20:48:18 by mondrew          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <stdio.h>
#include <string.h>

size_t	ft_strlen(const char *str);

int		main (void)
{
	size_t a;
	const char *str;

	str = "Hello, WWWWWWWWWWorld!";
	a = ft_strlen(str);
	printf("my a: %ld\n", a);
	a = strlen(str);
	printf("or a: %ld\n", a);
	return (0);
}

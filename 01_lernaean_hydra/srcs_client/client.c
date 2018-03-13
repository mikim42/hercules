/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: mikim <mikim@student.42.us.org>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/03 13:59:52 by mikim             #+#    #+#             */
/*   Updated: 2018/03/04 16:15:49 by mikim            ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

/*
**	asdfffffffffffffffffffffffffffffffffffffffff
**	adfsfd
*/

#include <lernaean_hydra.h>

void	communicate(int socket_fd)
{
	char	buffer[1000];
	char	*line;
	int		ret;

	while (1)
	{
		ft_printf("Enter message : ");
		ret = get_next_line(0, &line);
		if (send(socket_fd, line, ft_strlen(line), 0) < 0)
		{
			ft_printf("Failed to send\n");
			break ;
		}
		if ((ret = recv(socket_fd, buffer, 1000, 0)) <= 0)
			break ;
		else if (!strcmp(line, "exit"))
			break ;
		ft_printf("Server : %s\n", buffer);
		ft_bzero(buffer, ret);
		ft_strdel(&line);
	}
	if (line)
		ft_strdel(&line);
	ft_printf("Disconnected\n");
}

bool	connect_socket(t_sockaddr_in *server, int *socket_fd, char **av)
{
	if ((*socket_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
	{
		ft_printf("Failed to create socket\n");
		return (false);
	}
	server->sin_addr.s_addr = !strcmp(av[1], "loopback") ?
	inet_addr("127.0.0.1") : inet_addr(av[1]);
	server->sin_family = AF_INET;
	server->sin_port = htons(atoi(av[2]));
	if (connect(*socket_fd, (t_sockaddr *)server, sizeof(t_sockaddr_in)) < 0)
	{
		ft_printf("Failed to connect\n");
		return (false);
	}
	return (true);
}

int		main(int ac, char **av)
{
	t_sockaddr_in	server;
	int				socket_fd;

	if (ac != 3)
	{
		ft_printf("Invalid argument\nUsage: ./client <IP> <PORT>\n");
		return (0);
	}
	if (!connect_socket(&server, &socket_fd, av))
		return (0);
	communicate(socket_fd);
	close(socket_fd);
	return (0);
}

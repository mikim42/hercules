/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Mingyun Kim <mikim@student.42.us.org>      +#+  +:+       +#+        */
/*   GitHub:  https://github.com/mikim42          +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/02 18:24:20 by Mingyun K         #+#    #+#             */
/*   Updated: 2018/03/03 18:57:18 by Mingyun K        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <lernaean_hydra.h>

bool	set_server(int *client_fd, int port)
{
	s_sockaddr_in	server;
	s_sockaddr_in	client;
	int				socket_fd;
	int				socket_size;

	if ((socket_fd = socket(AF_INET, SOCK_STREAM, 0)) < 0)
		return (false);
	server.sin_family = AF_INET;
	server.sin_addr.s_addr = INADDR_ANY;
	server.sin_port = htons(port);
	if (bind(socket_fd, (s_sockaddr *)&server, sizeof(server)) < 0)
		return (false);
	if (listen(socket_fd, BACKLOG) < 0)
		return (false);
	socket_size = sizeof(s_sockaddr_in);
	if ((*client_fd = accept(socket_fd, (s_sockaddr *)&client, 
		(socklen_t*)&socket_size)) < 0)
		return (false);
	return (true);
}

int		server(int port)
{
	int		client_fd;
	char	buffer[1000];
	int		ret;

	if (!set_server(&client_fd, port))
		return (1);
	while ((ret = recv(client_fd, buffer, 1000, 0)) > 0)
	{
		if (!ft_strcmp(buffer, "exit"))
			break ;
		else if (!ft_strcmp(buffer, "hello"))
			send(client_fd, "world", 5, 0);
		else if (!ft_strcmp(buffer, "ping"))
			send(client_fd, "pong", 4, 0);
		else
			send(client_fd, "invalid command", 15, 0);
		ft_bzero(buffer, ret);
	}
	return (0);
}

int		main(int ac, char **av)
{
	pid_t	process_id;
	pid_t	session_id;
	int		ret;

	process_id = 0;
	session_id = 0;
	ret = 0;
	if (ac == 3 && !ft_strcmp(av[1], "-d"))
	{
		if ((process_id = fork()) != 0 || (session_id = setsid()) < 0)
		{
			process_id < 0 ? ft_printf("Failed to fork\n") : 0;
			return (0);
		}
		umask(0);
		close(STDIN_FILENO);
		close(STDOUT_FILENO);
		close(STDERR_FILENO);
		ret = server(ft_atoi(av[2]));
	}
	else if (ac == 2)
		ret = server(ft_atoi(av[1]));
	else
		ft_printf("Usage: ./server [-d] <PORT>\n");
	return (ret);
}

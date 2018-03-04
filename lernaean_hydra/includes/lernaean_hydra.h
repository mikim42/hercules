/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   lernaean_hydra.h                                   :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: Mingyun Kim <mikim@student.42.us.org>      +#+  +:+       +#+        */
/*   GitHub:  https://github.com/mikim42          +#+#+#+#+#+   +#+           */
/*   Created: 2018/03/03 15:55:24 by Mingyun K         #+#    #+#             */
/*   Updated: 2018/03/03 19:10:26 by Mingyun K        ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#ifndef LERNAEAN_HYDRA_H
# define LERNAEAN_HYDRA_H

# include <libft.h>

typedef struct sockaddr_in	t_sockaddr_in;
typedef struct sockaddr		t_sockaddr;

# define BACKLOG 128

/*
**		Server
*/

bool	set_server(int *client_fd, int port);
int		server(int port);

/*
**		Client
*/

bool	connect_socket(t_sockaddr_in *server, int *socket_fd, char **av);
void	communicate(int socket_fd);

#endif

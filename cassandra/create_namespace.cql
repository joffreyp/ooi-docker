CREATE KEYSPACE IF NOT EXISTS ooi
    WITH replication = {'class': 'SimpleStrategy',
                        'replication_factor' : 1};

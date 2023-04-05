CREATE TABLE IF NOT EXISTS coins(
                                    dt VARCHAR(16),
                                    avg_price NUMERIC,
                                    tx_cnt NUMERIC,
                                    tx_vol NUMERIC,
                                    active_addr_cnt NUMERIC,
                                    symbol VARCHAR(8),
                                    full_nm VARCHAR(128),
                                    open_price NUMERIC,
                                    high_price NUMERIC,
                                    low_price NUMERIC,
                                    close_price NUMERIC,
                                    vol NUMERIC,
                                    market NUMERIC
)
select upper(full_nm) full_name
    from coins
where full_nm is not null
group by 1
order by 1 asc

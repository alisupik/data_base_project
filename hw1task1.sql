CREATE TABLE IF NOT EXISTS hw(
                                 id INTEGER,
                                 height FLOAT4,
                                 weight FLOAT4
)

--1
select id, min(height) min_height, max(height) max_height, min(weight) min_weight, max(weight) max_weight
    from hw
group by 1;

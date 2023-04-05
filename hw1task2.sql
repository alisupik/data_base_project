CREATE TABLE IF NOT EXISTS hw(
                                 id INTEGER,
                                 height FLOAT4,
                                 weight FLOAT4
)

select (weight*703)/(height^2) as bmi
    from hw;

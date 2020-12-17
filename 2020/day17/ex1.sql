begin;

WITH vals AS (VALUES('#....#.#'),('..##.##.'),('#..#..#.'),('.#..#..#'),('.#..#...'),('##.#####'),('#..#..#.'),('##.##..#')),
-- WITH vals AS (VALUES('.#.'),('..#'),('###')),
layers AS (
    SELECT regexp_split_to_table(column1,'') as coord,
           row_number() over() as y
      FROM vals
),
conway0 AS (
    SELECT coord as data,
           row_number() over(PARTITION BY y) as x,
           y,
           0 as z,
           0 as layer
      FROM layers
),
conway1 AS (
    SELECT CASE
            WHEN COALESCE(c.data,'.')='#' AND neighbours.active in (2,3) THEN '#'
            WHEN COALESCE(c.data,'.')='.' AND neighbours.active=3 THEN '#'
            ELSE '.'
           END as data,
           gsx as x,
           gsy as y,
           gsz as z,
           layer+1 as layer

    FROM generate_series((SELECT min(x) FROM conway0)-1,(SELECT max(x) FROM conway0)+1) gsx
    CROSS JOIN generate_series((SELECT min(y) FROM conway0)-1,(SELECT max(y) FROM conway0)+1) gsy
    CROSS JOIN generate_series((SELECT min(z) FROM conway0)-1,(SELECT max(z) FROM conway0)+1) gsz
    JOIN LATERAL (SELECT count(*) as active
                    FROM conway0 c2 WHERE c2.x>=gsx.gsx-1 AND c2.x<=gsx.gsx+1
                                      AND c2.y>=gsy.gsy-1 AND c2.y<=gsy.gsy+1
                                      AND c2.z>=gsz.gsz-1 AND c2.z<=gsz.gsz+1
                                      AND NOT (c2.x=gsx.gsx AND c2.y=gsy.gsy AND c2.z=gsz.gsz)
                                      AND data='#'
                ) as neighbours ON TRUE
    LEFT JOIN conway0 c ON c.x=gsx.gsx AND c.y=gsy.gsy AND c.z=gsz.gsz
),
conway2 AS (
    SELECT CASE
            WHEN COALESCE(c.data,'.')='#' AND neighbours.active in (2,3) THEN '#'
            WHEN COALESCE(c.data,'.')='.' AND neighbours.active=3 THEN '#'
            ELSE '.'
           END as data,
           gsx as x,
           gsy as y,
           gsz as z,
           layer+1 as layer

    FROM generate_series((SELECT min(x) FROM conway1)-1,(SELECT max(x) FROM conway1)+1) gsx
    CROSS JOIN generate_series((SELECT min(y) FROM conway1)-1,(SELECT max(y) FROM conway1)+1) gsy
    CROSS JOIN generate_series((SELECT min(z) FROM conway1)-1,(SELECT max(z) FROM conway1)+1) gsz
    JOIN LATERAL (SELECT count(*) as active
                    FROM conway1 c2 WHERE c2.x>=gsx.gsx-1 AND c2.x<=gsx.gsx+1
                                      AND c2.y>=gsy.gsy-1 AND c2.y<=gsy.gsy+1
                                      AND c2.z>=gsz.gsz-1 AND c2.z<=gsz.gsz+1
                                      AND NOT (c2.x=gsx.gsx AND c2.y=gsy.gsy AND c2.z=gsz.gsz)
                                      AND data='#'
                ) as neighbours ON TRUE
    LEFT JOIN conway1 c ON c.x=gsx.gsx AND c.y=gsy.gsy AND c.z=gsz.gsz
),
conway3 AS (
    SELECT CASE
            WHEN COALESCE(c.data,'.')='#' AND neighbours.active in (2,3) THEN '#'
            WHEN COALESCE(c.data,'.')='.' AND neighbours.active=3 THEN '#'
            ELSE '.'
           END as data,
           gsx as x,
           gsy as y,
           gsz as z,
           layer+1 as layer

    FROM generate_series((SELECT min(x) FROM conway2)-1,(SELECT max(x) FROM conway2)+1) gsx
    CROSS JOIN generate_series((SELECT min(y) FROM conway2)-1,(SELECT max(y) FROM conway2)+1) gsy
    CROSS JOIN generate_series((SELECT min(z) FROM conway2)-1,(SELECT max(z) FROM conway2)+1) gsz
    JOIN LATERAL (SELECT count(*) as active
                    FROM conway2 c2 WHERE c2.x>=gsx.gsx-1 AND c2.x<=gsx.gsx+1
                                      AND c2.y>=gsy.gsy-1 AND c2.y<=gsy.gsy+1
                                      AND c2.z>=gsz.gsz-1 AND c2.z<=gsz.gsz+1
                                      AND NOT (c2.x=gsx.gsx AND c2.y=gsy.gsy AND c2.z=gsz.gsz)
                                      AND data='#'
                ) as neighbours ON TRUE
    LEFT JOIN conway2 c ON c.x=gsx.gsx AND c.y=gsy.gsy AND c.z=gsz.gsz
),
conway4 AS (
    SELECT CASE
            WHEN COALESCE(c.data,'.')='#' AND neighbours.active in (2,3) THEN '#'
            WHEN COALESCE(c.data,'.')='.' AND neighbours.active=3 THEN '#'
            ELSE '.'
           END as data,
           gsx as x,
           gsy as y,
           gsz as z,
           layer+1 as layer

    FROM generate_series((SELECT min(x) FROM conway3)-1,(SELECT max(x) FROM conway3)+1) gsx
    CROSS JOIN generate_series((SELECT min(y) FROM conway3)-1,(SELECT max(y) FROM conway3)+1) gsy
    CROSS JOIN generate_series((SELECT min(z) FROM conway3)-1,(SELECT max(z) FROM conway3)+1) gsz
    JOIN LATERAL (SELECT count(*) as active
                    FROM conway3 c2 WHERE c2.x>=gsx.gsx-1 AND c2.x<=gsx.gsx+1
                                      AND c2.y>=gsy.gsy-1 AND c2.y<=gsy.gsy+1
                                      AND c2.z>=gsz.gsz-1 AND c2.z<=gsz.gsz+1
                                      AND NOT (c2.x=gsx.gsx AND c2.y=gsy.gsy AND c2.z=gsz.gsz)
                                      AND data='#'
                ) as neighbours ON TRUE
    LEFT JOIN conway3 c ON c.x=gsx.gsx AND c.y=gsy.gsy AND c.z=gsz.gsz
),
conway5 AS (
    SELECT CASE
            WHEN COALESCE(c.data,'.')='#' AND neighbours.active in (2,3) THEN '#'
            WHEN COALESCE(c.data,'.')='.' AND neighbours.active=3 THEN '#'
            ELSE '.'
           END as data,
           gsx as x,
           gsy as y,
           gsz as z,
           layer+1 as layer

    FROM generate_series((SELECT min(x) FROM conway4)-1,(SELECT max(x) FROM conway4)+1) gsx
    CROSS JOIN generate_series((SELECT min(y) FROM conway4)-1,(SELECT max(y) FROM conway4)+1) gsy
    CROSS JOIN generate_series((SELECT min(z) FROM conway4)-1,(SELECT max(z) FROM conway4)+1) gsz
    JOIN LATERAL (SELECT count(*) as active
                    FROM conway4 c2 WHERE c2.x>=gsx.gsx-1 AND c2.x<=gsx.gsx+1
                                      AND c2.y>=gsy.gsy-1 AND c2.y<=gsy.gsy+1
                                      AND c2.z>=gsz.gsz-1 AND c2.z<=gsz.gsz+1
                                      AND NOT (c2.x=gsx.gsx AND c2.y=gsy.gsy AND c2.z=gsz.gsz)
                                      AND data='#'
                ) as neighbours ON TRUE
    LEFT JOIN conway4 c ON c.x=gsx.gsx AND c.y=gsy.gsy AND c.z=gsz.gsz
),
conway6 AS (
    SELECT CASE
            WHEN COALESCE(c.data,'.')='#' AND neighbours.active in (2,3) THEN '#'
            WHEN COALESCE(c.data,'.')='.' AND neighbours.active=3 THEN '#'
            ELSE '.'
           END as data,
           gsx as x,
           gsy as y,
           gsz as z,
           layer+1 as layer

    FROM generate_series((SELECT min(x) FROM conway5)-1,(SELECT max(x) FROM conway5)+1) gsx
    CROSS JOIN generate_series((SELECT min(y) FROM conway5)-1,(SELECT max(y) FROM conway5)+1) gsy
    CROSS JOIN generate_series((SELECT min(z) FROM conway5)-1,(SELECT max(z) FROM conway5)+1) gsz
    JOIN LATERAL (SELECT count(*) as active
                    FROM conway5 c2 WHERE c2.x>=gsx.gsx-1 AND c2.x<=gsx.gsx+1
                                      AND c2.y>=gsy.gsy-1 AND c2.y<=gsy.gsy+1
                                      AND c2.z>=gsz.gsz-1 AND c2.z<=gsz.gsz+1
                                      AND NOT (c2.x=gsx.gsx AND c2.y=gsy.gsy AND c2.z=gsz.gsz)
                                      AND data='#'
                ) as neighbours ON TRUE
    LEFT JOIN conway5 c ON c.x=gsx.gsx AND c.y=gsy.gsy AND c.z=gsz.gsz
)

select count(*) FROM conway6 where data='#';

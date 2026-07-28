-- Deploy: migrate/full_text_search
-- made with <3 @ constructive.io

-- requires: migrate/foreign_key_constraint


SET session_replication_role TO replica;
-- using replica in case we are deploying triggers to metaschema_public

-- unaccent, postgis affected and require grants
GRANT EXECUTE ON ALL FUNCTIONS IN SCHEMA public to public;

DO $LQLMIGRATION$
  DECLARE
  BEGIN

    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_user');
    EXECUTE format('GRANT CONNECT ON DATABASE %I TO %I', current_database(), 'app_admin');

  END;
$LQLMIGRATION$;

INSERT INTO metaschema_public.full_text_search (
  id,
  database_id,
  table_id,
  field_id,
  field_ids,
  weights,
  langs,
  lang_column
) VALUES
  ('0be6ccbc-5c4e-0951-8f14-fde79e9d1a45', '019fa679-9064-7be8-b12a-f974608356ce', '682fc22b-1922-4990-6dc1-8992c84d4963', 'dc848bba-4266-d8a0-72a2-8ea73c59cddb', '{bd04d00e-e4ca-041c-f003-7a31a53f1b09,22d1d18c-a249-8ee8-3817-8b943dc68dfa,7a669186-b043-1d0b-f961-e4a022237097}', '{A,B,C}', '{english,english,english}', NULL),
  ('2d4e1d10-527b-a89b-57f8-dcccff929f26', '019fa679-9064-7be8-b12a-f974608356ce', '681e78dd-266c-1a62-7301-53216dd38bcb', '67b3be19-e6a2-5603-93d0-4c427ec5b26f', '{b07f7849-f180-2a05-6e86-bd7b8aba4957,f162ee7b-14ad-f147-40fc-06471c5c8274,24e2493a-9b07-3ae7-86e7-15ab8c81ffb6}', '{A,B,C}', '{english,english,english}', NULL),
  ('452526b1-e57b-b2f2-77a2-a3bc180e0970', '019fa679-9064-7be8-b12a-f974608356ce', '8a9a840b-10a5-ee10-4627-8b372bea2e28', 'b2422171-8a8d-8670-9a81-bcffaeacf90c', '{722beff7-5cf9-bada-248d-543185b9b779,4fce0eb2-c79a-0503-752c-27c5cb477195,a0a2a5b6-bbd1-f420-f011-a862aae9681d,ee60574a-3fdf-d037-0a94-de73a081a581}', '{A,A,B,C}', '{english,english,english,english}', NULL),
  ('476abdd4-b1ab-74a9-725e-d851a8268837', '019fa679-9064-7be8-b12a-f974608356ce', 'c1d5d295-26ce-e77d-44ee-4efa20758b5f', 'eda8b446-c9a4-39f5-5d5d-4dc69d8a36c9', '{50d053f1-39ab-c9cf-92a0-c910e0164d0d,788dcae0-f525-02a7-9930-0f01cbc1c067}', '{A,B}', '{english,english}', NULL),
  ('532b857c-84de-ce2f-701b-e71dc1da6931', '019fa679-9064-7be8-b12a-f974608356ce', 'd1f584e9-372a-a1fd-b7a3-170a6207cb44', '01ce5061-d292-2e78-5029-a6ae9b2731f7', '{552f6f14-7470-93c2-cb8e-47844a1ffda1,6a58408d-dc5b-5269-873a-5af28acd8319}', '{A,B}', '{english,english}', NULL),
  ('5944aa70-6e32-c7e4-ff97-0b7b5de30ffe', '019fa679-9064-7be8-b12a-f974608356ce', 'da26ffe1-1b89-3493-d9bf-7edd46a867c4', '0b31ddc1-6bf3-5706-8223-3163d82e6c92', '{d391ea1b-06b3-773d-b050-4ffb2418744d,bf8ddff6-42f4-e75d-3201-81329707d49d,60f4bf23-0d95-def3-c458-4f0fa53d982a}', '{A,B,C}', '{english,english,english}', NULL),
  ('77204bb1-4d1a-a538-2a01-b9416009bc09', '019fa679-9064-7be8-b12a-f974608356ce', 'bba78443-f49e-5101-39a4-b7cfd043bea7', '59c3658a-0427-f04b-388f-2eabd0e67cf7', '{8ad2afba-dfde-86c8-bb53-106d42f03415,2360e5ef-2ea6-19c5-cd33-14952ca95b13}', '{A,B}', '{english,english}', NULL),
  ('9453fb69-62c4-83e0-e69a-9fb5fa358ae4', '019fa679-9064-7be8-b12a-f974608356ce', '05fabb64-c1e4-494b-f916-46613aa9eb3e', 'dd5ea42e-a69e-e978-1198-91906b6866ca', '{cf7877e6-0e70-2db8-2ff6-bf703983de44}', '{A}', '{english}', NULL);


SET session_replication_role TO DEFAULT;



-- Deploy: migrate/api_schemas
-- made with <3 @ constructive.io

-- requires: migrate/api_modules


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

INSERT INTO services_public.api_schemas (
  id,
  database_id,
  schema_id,
  api_id
) VALUES
  ('0027df8d-5092-3205-9cea-72d64d89ef4a', 'fdf8a620-6969-72d5-d89a-ed384259d249', '343368ea-17de-176c-f14b-ee59fef96a24', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('112d523a-51c9-95c2-c7c9-36c0db43f071', 'fdf8a620-6969-72d5-d89a-ed384259d249', '8f7308b0-c788-f566-4959-59c563e849da', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('172e2602-ff65-00d4-abb7-a79342c651c0', 'fdf8a620-6969-72d5-d89a-ed384259d249', '343368ea-17de-176c-f14b-ee59fef96a24', '9b816881-10d3-41c9-86dd-78473d4334eb'),
  ('26a691f5-9af9-bf66-c298-86e489c90c3b', 'fdf8a620-6969-72d5-d89a-ed384259d249', '11ce582f-ee6f-02b8-a5aa-5d630e8f9569', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('2b72b065-cee7-860b-fdc1-084e22e6edc8', 'fdf8a620-6969-72d5-d89a-ed384259d249', '6e16cbb4-ce18-b5c0-9094-e85eceba4aac', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('3d138afe-1148-6d50-e64c-1ac8d96baa6b', 'fdf8a620-6969-72d5-d89a-ed384259d249', '73039e61-65c0-7ce3-9869-9bbcb0468fde', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('3f8a6200-753a-760b-21a0-3952f4238d0a', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('6712363d-b471-753d-048b-6eda18c5bc1a', 'fdf8a620-6969-72d5-d89a-ed384259d249', '73039e61-65c0-7ce3-9869-9bbcb0468fde', 'a8adeec8-5fcf-21d3-dd4f-6b48eaa0fc1e'),
  ('6e794677-1095-2f97-f0db-cdbacf21a9d5', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c9de8540-bf1d-2bbb-518d-39b893b55636', '9b816881-10d3-41c9-86dd-78473d4334eb'),
  ('7a62396c-6d1c-fcbc-d7e1-91281ca05c97', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff1bb0fc-6007-c362-8fe1-814dd187cedf', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('7c961f8d-8f8a-e077-9136-15e737b6a5f5', 'fdf8a620-6969-72d5-d89a-ed384259d249', '6e16cbb4-ce18-b5c0-9094-e85eceba4aac', 'a8adeec8-5fcf-21d3-dd4f-6b48eaa0fc1e'),
  ('8006ed5c-4643-c4b5-c2f8-56d038503b75', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e005449b-7ef7-37df-9c51-2cfec020fa43', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('89ce1275-4ef2-e690-51c9-b63ce9cb0543', 'fdf8a620-6969-72d5-d89a-ed384259d249', '11ce582f-ee6f-02b8-a5aa-5d630e8f9569', 'a8adeec8-5fcf-21d3-dd4f-6b48eaa0fc1e'),
  ('90e2071c-e66a-3b2e-e92c-baad7c3d4c82', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c9de8540-bf1d-2bbb-518d-39b893b55636', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('94ab2182-b646-1df3-0c19-6e3b11d33cb0', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('96b437fd-ba02-3a92-8be1-11c286b6f725', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3d6f356b-94c8-82c5-251f-0e5a5540c83a', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('977ba78d-8728-4fe7-3f2a-52ead7272a53', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff1bb0fc-6007-c362-8fe1-814dd187cedf', '9b816881-10d3-41c9-86dd-78473d4334eb'),
  ('a22ca922-7510-17af-f3a5-765c05d44e04', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'c9de8540-bf1d-2bbb-518d-39b893b55636', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('a57bb20b-3a31-fe46-ecbd-b9291197f9f8', 'fdf8a620-6969-72d5-d89a-ed384259d249', '11ce582f-ee6f-02b8-a5aa-5d630e8f9569', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('a8aef48b-8127-f7fc-41e7-d965eaec1a96', 'fdf8a620-6969-72d5-d89a-ed384259d249', '87f71f30-fdc9-e2b0-53e3-d11ad859f75e', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('a90eb76f-3076-a0ca-f6ae-0d0bd47277ce', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', '9b816881-10d3-41c9-86dd-78473d4334eb'),
  ('b7e86f15-5242-b50f-6968-886af6cc6d1d', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3d6f356b-94c8-82c5-251f-0e5a5540c83a', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('c9cc0c5d-bb60-dd67-9742-65815ab8ece2', 'fdf8a620-6969-72d5-d89a-ed384259d249', '6e16cbb4-ce18-b5c0-9094-e85eceba4aac', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('cda42a47-0d69-8639-6db9-264507dbe15d', 'fdf8a620-6969-72d5-d89a-ed384259d249', '73039e61-65c0-7ce3-9869-9bbcb0468fde', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('d06420dc-ef7c-fb47-2b9a-30832cc111b2', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', '9b816881-10d3-41c9-86dd-78473d4334eb'),
  ('d682e23a-89f1-6364-1aaa-6eae3ea11117', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'ff1bb0fc-6007-c362-8fe1-814dd187cedf', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('d8f05326-2969-bd1b-d9d2-88294a0871c2', 'fdf8a620-6969-72d5-d89a-ed384259d249', '87f71f30-fdc9-e2b0-53e3-d11ad859f75e', 'a8adeec8-5fcf-21d3-dd4f-6b48eaa0fc1e'),
  ('d8fdf3d1-9caf-615b-2bb5-4d971bdfa833', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'f3aaa8df-cd60-58f4-bb6a-0c27c21ae9a7', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('e43e9b65-598f-781e-2073-396962b8e65e', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'bf7de37d-942e-7f7a-cebb-49664a1cf370', '16dadbdb-d7c7-6c00-5919-acec849d1544'),
  ('e7486316-5b61-60d7-6c1f-4e6a3e811048', 'fdf8a620-6969-72d5-d89a-ed384259d249', '343368ea-17de-176c-f14b-ee59fef96a24', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('e9d9ef9f-9422-b86f-d629-6ac2bfbf3027', 'fdf8a620-6969-72d5-d89a-ed384259d249', 'e005449b-7ef7-37df-9c51-2cfec020fa43', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('ebaf7482-7d50-91e5-b5a8-9253630f2fa0', 'fdf8a620-6969-72d5-d89a-ed384259d249', '87f71f30-fdc9-e2b0-53e3-d11ad859f75e', 'e005449b-7ef7-37df-9c51-2cfec020fa43'),
  ('ef33eee2-6485-b513-adbe-1fccfa69e4fa', 'fdf8a620-6969-72d5-d89a-ed384259d249', '7652b564-62c7-22d6-ad88-2b68efdaab16', '8f7308b0-c788-f566-4959-59c563e849da'),
  ('fe8d6650-0572-efc6-49fe-a5a1f3cc0a61', 'fdf8a620-6969-72d5-d89a-ed384259d249', '3d6f356b-94c8-82c5-251f-0e5a5540c83a', '9b816881-10d3-41c9-86dd-78473d4334eb');


SET session_replication_role TO DEFAULT;



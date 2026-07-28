-- Deploy: migrate/spatial_relation
-- made with <3 @ constructive.io

-- requires: migrate/embedding_chunks


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

INSERT INTO metaschema_public.spatial_relation (
  id,
  database_id,
  table_id,
  field_id,
  ref_table_id,
  ref_field_id,
  name,
  operator,
  param_name,
  category,
  tags
) VALUES
  ('3be20c5d-14a1-84f4-6115-0e8a4ca4eb46', '019fa679-9064-7be8-b12a-f974608356ce', '6a91c644-677c-dfd8-481c-ddda687f0610', 'cca5b3fc-db95-810f-aecb-91e6ec5376c1', '681e78dd-266c-1a62-7301-53216dd38bcb', '25f123eb-92a5-0c53-8a1c-559f71efee4f', 'nearbyVenues', 'st_dwithin', 'distance', 'app', '{}'),
  ('858ba10e-90cf-08f8-2851-a557cdd65136', '019fa679-9064-7be8-b12a-f974608356ce', '26bbe4e4-345c-c783-2572-48b65a799066', '3bba3083-9927-992a-7432-e6cf9f9627c2', '8a9a840b-10a5-ee10-4627-8b372bea2e28', '1f5ee42a-f49c-01fc-e448-8989e2fdcecd', 'nearbyContacts', 'st_dwithin', 'distance', 'app', '{}'),
  ('8d9cd12c-fb74-f07b-ae4a-cb157006a425', '019fa679-9064-7be8-b12a-f974608356ce', '26bbe4e4-345c-c783-2572-48b65a799066', '3bba3083-9927-992a-7432-e6cf9f9627c2', '436a727e-b219-b1e9-8ef1-f94134b0c57f', '2a1d5482-0c23-36ec-924e-5f50d73b0d19', 'nearbyPlaces', 'st_dwithin', 'distance', 'app', '{}'),
  ('99e6518b-4155-c748-25fa-eca2c55befc9', '019fa679-9064-7be8-b12a-f974608356ce', '682fc22b-1922-4990-6dc1-8992c84d4963', '975ea240-df23-5acd-eccf-e9c1164a359d', '681e78dd-266c-1a62-7301-53216dd38bcb', '25f123eb-92a5-0c53-8a1c-559f71efee4f', 'nearbyVenues', 'st_dwithin', 'distance', 'app', '{}'),
  ('c15d406e-9ec7-75b0-caa2-5e1d7ff7ff54', '019fa679-9064-7be8-b12a-f974608356ce', '26bbe4e4-345c-c783-2572-48b65a799066', '3bba3083-9927-992a-7432-e6cf9f9627c2', '26bbe4e4-345c-c783-2572-48b65a799066', '3bba3083-9927-992a-7432-e6cf9f9627c2', 'nearbyMemories', 'st_dwithin', 'distance', 'app', '{}');


SET session_replication_role TO DEFAULT;



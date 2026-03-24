-- Deploy: migrate/schema_grant
-- made with <3 @ constructive.io

-- requires: migrate/full_text_search


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

INSERT INTO metaschema_public.schema_grant (
  id,
  database_id,
  schema_id,
  grantee_name
) VALUES
  ('019d1dbf-d820-70ae-959d-70b4212bd809', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d800-752b-ad00-cfd3e9b6b449', 'administrator'),
  ('019d1dbf-d831-74bf-8d82-b7bbdd2ef03b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d800-752b-ad00-cfd3e9b6b449', 'authenticated'),
  ('019d1dbf-d842-70b3-a1fa-6de9241d33c4', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d800-752b-ad00-cfd3e9b6b449', 'anonymous'),
  ('019d1dbf-d8a5-7d93-861b-bd1af3411ba8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d801-7f3c-a7f6-897ce7071d54', 'administrator'),
  ('019d1dbf-d8b4-7877-9bd1-2eceb7fe2162', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d801-7f3c-a7f6-897ce7071d54', 'authenticated'),
  ('019d1dbf-d8c4-7273-b13a-490a61cd97a0', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d801-7f3c-a7f6-897ce7071d54', 'anonymous'),
  ('019d1dbf-d924-726a-9a7c-bf6db9bbb82c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d916-7f9e-b053-cd834ccf7c73', 'administrator'),
  ('019d1dbf-d932-7c1f-a7ca-08e2a0dc91f2', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d916-7f9e-b053-cd834ccf7c73', 'authenticated'),
  ('019d1dbf-d942-7681-9f72-447ca088223c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d916-7f9e-b053-cd834ccf7c73', 'anonymous'),
  ('019d1dbf-d9a0-7434-9028-d100a5782920', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d993-770b-93bd-d0eabb8adba7', 'administrator'),
  ('019d1dbf-d9ae-708d-982a-9d6061a208d8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d993-770b-93bd-d0eabb8adba7', 'authenticated'),
  ('019d1dbf-d9bd-73e6-9d04-a13bd41ee4a3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-d993-770b-93bd-d0eabb8adba7', 'anonymous'),
  ('019d1dbf-da28-7eed-9531-c879119115eb', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da1b-74e1-ad0c-325e810d428a', 'administrator'),
  ('019d1dbf-da38-71ab-a1a5-04a7e7a3d9f3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da1b-74e1-ad0c-325e810d428a', 'authenticated'),
  ('019d1dbf-da47-7f17-9733-4dbc42da1717', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-da1b-74e1-ad0c-325e810d428a', 'anonymous'),
  ('019d1dbf-ddc7-72b4-ad7b-185f73b42d4e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', 'administrator'),
  ('019d1dbf-ddd6-793a-91a0-0dc1a60a2e30', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', 'authenticated'),
  ('019d1dbf-dde6-7ad2-89eb-e5ae2c9be128', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-ddbb-7fbf-9505-8db63eca57ee', 'anonymous'),
  ('019d1dbf-dfb1-79ad-a434-935fcaf6bea5', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', 'administrator'),
  ('019d1dbf-dfc2-7fb2-9be1-a272cd26898c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', 'authenticated'),
  ('019d1dbf-dfd5-767c-91aa-ed12929e8733', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-dfa6-7e3d-bdb1-3ff7b34348ef', 'anonymous'),
  ('019d1dbf-e03d-7d2a-b0ec-d2c79eb7ace8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e02f-7d4d-8fb4-875790017881', 'administrator'),
  ('019d1dbf-e04c-7c8f-8319-fad573d5d34b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e02f-7d4d-8fb4-875790017881', 'authenticated'),
  ('019d1dbf-e05c-7c7f-8f37-85a9d54f0589', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e02f-7d4d-8fb4-875790017881', 'anonymous'),
  ('019d1dbf-e380-704d-92c6-f835ca422a0f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e374-7235-b758-72d345f56181', 'administrator'),
  ('019d1dbf-e390-7426-9d4f-655707e269c0', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e374-7235-b758-72d345f56181', 'authenticated'),
  ('019d1dbf-e3a0-7b13-a10d-81bfebc08c1c', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e374-7235-b758-72d345f56181', 'anonymous'),
  ('019d1dbf-e404-787d-8d66-e58a8fb4ea64', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e3f6-78ef-9642-13f3dec365eb', 'administrator'),
  ('019d1dbf-e414-72ce-95c4-ee94ccf5d325', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e3f6-78ef-9642-13f3dec365eb', 'authenticated'),
  ('019d1dbf-e424-750b-afc7-99b9e2ca6f46', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e3f6-78ef-9642-13f3dec365eb', 'anonymous'),
  ('019d1dbf-e70a-7392-a8af-40df7a7ce374', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e6fd-7837-9225-5b98c59d42dc', 'administrator'),
  ('019d1dbf-e71a-78e6-89f3-d4e47efc13ac', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e6fd-7837-9225-5b98c59d42dc', 'authenticated'),
  ('019d1dbf-e72b-7557-a5b1-af36e6efb80f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-e6fd-7837-9225-5b98c59d42dc', 'anonymous'),
  ('019d1dbf-f8e7-7f93-91e8-14463449bde5', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f8da-7041-87cd-74e01456db0c', 'administrator'),
  ('019d1dbf-f8f9-7c3e-9cde-dbb86f388dad', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f8da-7041-87cd-74e01456db0c', 'authenticated'),
  ('019d1dbf-f90b-711b-8af1-ca1e81b62420', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f8da-7041-87cd-74e01456db0c', 'anonymous'),
  ('019d1dbf-f980-79e9-b279-60f530cb7c1e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f96f-786d-8c51-061c426cf98f', 'administrator'),
  ('019d1dbf-f991-7d17-8b5a-14c121a2509d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f96f-786d-8c51-061c426cf98f', 'authenticated'),
  ('019d1dbf-f9a3-743f-9de8-93a981bd784f', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dbf-f96f-786d-8c51-061c426cf98f', 'anonymous'),
  ('019d1dc0-031a-73dd-bc0f-ade46329fb9d', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-030c-71b5-8d95-fe3ed949ed16', 'administrator'),
  ('019d1dc0-032c-7179-b4ff-8f1d62e2d96a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-030c-71b5-8d95-fe3ed949ed16', 'authenticated'),
  ('019d1dc0-033d-7c9d-8135-616100ecec04', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-030c-71b5-8d95-fe3ed949ed16', 'anonymous'),
  ('019d1dc0-03bd-77e4-98c0-83c2fc099846', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-03ac-77a8-9359-14b68f627f73', 'administrator'),
  ('019d1dc0-03d2-7d74-b6b5-ec9b1eb7e2a2', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-03ac-77a8-9359-14b68f627f73', 'authenticated'),
  ('019d1dc0-03e4-7f64-9e3d-f7359fa525f3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-03ac-77a8-9359-14b68f627f73', 'anonymous'),
  ('019d1dc0-7048-7cd7-a702-4028dfaa0602', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-7037-7615-903e-b746e81e9c80', 'administrator'),
  ('019d1dc0-705c-74de-8d1d-d167cd7ced40', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-7037-7615-903e-b746e81e9c80', 'authenticated'),
  ('019d1dc0-7070-7bba-80ac-cdc805006c2b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-7037-7615-903e-b746e81e9c80', 'anonymous'),
  ('019d1dc0-7368-7697-ad3f-2b11b1cfbce1', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-7355-7fc9-9605-627035d2a03b', 'administrator'),
  ('019d1dc0-737f-701b-b182-46567e3e4fc3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-7355-7fc9-9605-627035d2a03b', 'authenticated'),
  ('019d1dc0-7394-7cd6-b9b1-ad027aa08e7b', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-7355-7fc9-9605-627035d2a03b', 'anonymous'),
  ('019d1dc0-8296-7673-9b90-6f5d5e1669b8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8284-724f-89c7-49478a97f812', 'administrator'),
  ('019d1dc0-82ab-7dcf-852f-0eaf272f324e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8284-724f-89c7-49478a97f812', 'authenticated'),
  ('019d1dc0-82c2-7500-b3ef-e9e38cb656c8', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8284-724f-89c7-49478a97f812', 'anonymous'),
  ('019d1dc0-865a-7162-b80f-eecbf669df54', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8646-78cc-8723-be1a92282296', 'administrator'),
  ('019d1dc0-8670-7ac9-bef5-fef32b68b1c4', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8646-78cc-8723-be1a92282296', 'authenticated'),
  ('019d1dc0-8686-78ad-85e4-09a876ef19f3', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8646-78cc-8723-be1a92282296', 'anonymous'),
  ('019d1dc0-8790-79ef-9e56-7514cc1f4184', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-877b-7228-a004-e1126128d743', 'administrator'),
  ('019d1dc0-87a6-7849-a570-66cc1bd91e7e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-877b-7228-a004-e1126128d743', 'authenticated'),
  ('019d1dc0-87bc-7456-83c6-e0dd67afaf33', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-877b-7228-a004-e1126128d743', 'anonymous'),
  ('019d1dc0-8857-74ce-be75-66b9202902be', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8842-76be-9040-db1ef7c49140', 'administrator'),
  ('019d1dc0-886d-7d16-8c41-fd394c00d1ea', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8842-76be-9040-db1ef7c49140', 'authenticated'),
  ('019d1dc0-8886-7b1d-ab56-bf76a478ea46', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-8842-76be-9040-db1ef7c49140', 'anonymous'),
  ('019d1dc0-9c79-73f0-99f4-8183ca208806', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9c66-768f-aad1-253050d10132', 'administrator'),
  ('019d1dc0-9c8f-7aef-b0b7-69dff97fa381', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9c66-768f-aad1-253050d10132', 'authenticated'),
  ('019d1dc0-9ca5-7ca2-996a-8ad285820c5a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9c66-768f-aad1-253050d10132', 'anonymous'),
  ('019d1dc0-9d4a-7b69-ab31-e1c81ac4cb5e', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9d34-7344-8783-d9e73c699e74', 'administrator'),
  ('019d1dc0-9d5f-7f84-8fff-3634241ad1ff', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9d34-7344-8783-d9e73c699e74', 'authenticated'),
  ('019d1dc0-9d77-79b4-b48e-40de0709764a', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-9d34-7344-8783-d9e73c699e74', 'anonymous'),
  ('019d1dc0-b414-7920-a16d-2d686fa89ad2', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-b3ff-7ebd-81bf-a2b6f38198c3', 'administrator'),
  ('019d1dc0-b42e-7b85-a64c-17f9031358c0', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-b3ff-7ebd-81bf-a2b6f38198c3', 'authenticated'),
  ('019d1dc0-b449-700e-a05b-f7f41e56d871', '019d1dbf-d7f4-78e2-8f5c-6e811773c2c7', '019d1dc0-b3ff-7ebd-81bf-a2b6f38198c3', 'anonymous');


SET session_replication_role TO DEFAULT;



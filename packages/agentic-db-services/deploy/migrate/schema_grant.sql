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
  ('019d3daa-fe4a-7605-b7fb-e258bef156f0', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2b-747e-851f-97fbff7bed07', 'administrator'),
  ('019d3daa-fe5b-7731-9278-69ec710df94c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2b-747e-851f-97fbff7bed07', 'authenticated'),
  ('019d3daa-fe6a-7726-b3f0-95e73d499c2a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2b-747e-851f-97fbff7bed07', 'anonymous'),
  ('019d3daa-fec8-72e8-bd24-293a3afdb5d4', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2d-71ef-bb39-866600eeaed9', 'administrator'),
  ('019d3daa-fed6-78c5-b6f7-14352a41404b', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2d-71ef-bb39-866600eeaed9', 'authenticated'),
  ('019d3daa-fee5-765a-8a9d-73a53fff88c8', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-fe2d-71ef-bb39-866600eeaed9', 'anonymous'),
  ('019d3daa-ff3f-70d6-a5f8-41c14e3cd6f0', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-ff32-79fb-9090-387f029df43b', 'administrator'),
  ('019d3daa-ff4c-7a85-9c42-4175551a9ebd', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-ff32-79fb-9090-387f029df43b', 'authenticated'),
  ('019d3daa-ff5b-70af-8a29-e20f66fd6a1f', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-ff32-79fb-9090-387f029df43b', 'anonymous'),
  ('019d3daa-ffb6-7775-916d-66827cff36e0', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-ffaa-738e-a2f2-a3453100bd8c', 'administrator'),
  ('019d3daa-ffc4-78b6-8e34-7d0bb27e65a8', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-ffaa-738e-a2f2-a3453100bd8c', 'authenticated'),
  ('019d3daa-ffd2-7883-a7c4-d28f0772e7ff', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3daa-ffaa-738e-a2f2-a3453100bd8c', 'anonymous'),
  ('019d3dab-0037-7db0-9f89-b148e09138cb', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-002a-7fad-85d1-275b4f59abee', 'administrator'),
  ('019d3dab-0047-7751-9efe-87b0430efcbc', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-002a-7fad-85d1-275b4f59abee', 'authenticated'),
  ('019d3dab-0058-7145-9371-f8623583e344', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-002a-7fad-85d1-275b4f59abee', 'anonymous'),
  ('019d3dab-03d1-74c7-9d5f-2b84dcaabfcc', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', 'administrator'),
  ('019d3dab-03e0-7388-9745-ee40d12fcb2a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', 'authenticated'),
  ('019d3dab-03ee-7af8-94f9-29eadc9404cd', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-03c6-7630-a278-03cc476571de', 'anonymous'),
  ('019d3dab-05ba-7425-a794-5ae007582621', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-05af-70e1-92cf-72aabeae605c', 'administrator'),
  ('019d3dab-05ca-7ace-a495-11474ae09300', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-05af-70e1-92cf-72aabeae605c', 'authenticated'),
  ('019d3dab-05db-700d-8eff-439e77b5ae77', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-05af-70e1-92cf-72aabeae605c', 'anonymous'),
  ('019d3dab-0645-7875-9de9-7b3e141d3285', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0635-7f01-9b19-4c4e596c6114', 'administrator'),
  ('019d3dab-0656-72ae-aa10-44087924052a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0635-7f01-9b19-4c4e596c6114', 'authenticated'),
  ('019d3dab-0667-70ed-af87-42ae170526a1', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0635-7f01-9b19-4c4e596c6114', 'anonymous'),
  ('019d3dab-09ba-7ec6-9af1-a6199a04518b', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-09ae-75ea-8737-15a5619d093a', 'administrator'),
  ('019d3dab-09ce-73f8-bf3f-ab78ff428cb9', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-09ae-75ea-8737-15a5619d093a', 'authenticated'),
  ('019d3dab-09e0-76e3-be1e-44824ae60929', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-09ae-75ea-8737-15a5619d093a', 'anonymous'),
  ('019d3dab-0a4d-73ba-822f-0235ea1278f1', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0a3d-7b03-99ad-334c86b5d166', 'administrator'),
  ('019d3dab-0a5f-7dfd-8895-5237ce2bf995', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0a3d-7b03-99ad-334c86b5d166', 'authenticated'),
  ('019d3dab-0a72-7b3e-9a85-424fb63ad38d', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0a3d-7b03-99ad-334c86b5d166', 'anonymous'),
  ('019d3dab-0d66-7a5c-8940-e03476e5bbfa', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0d59-7a36-8f13-1f1eaa4266c4', 'administrator'),
  ('019d3dab-0d80-79b7-929e-53eb8da0dbd1', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0d59-7a36-8f13-1f1eaa4266c4', 'authenticated'),
  ('019d3dab-0d94-7afd-a2aa-c044224c5927', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-0d59-7a36-8f13-1f1eaa4266c4', 'anonymous'),
  ('019d3dab-1cf9-70cb-a0fa-9681acb2ac3e', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1ceb-7693-a450-cbc750a78c9a', 'administrator'),
  ('019d3dab-1d0a-77aa-b96c-c5087eeb4f99', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1ceb-7693-a450-cbc750a78c9a', 'authenticated'),
  ('019d3dab-1d1b-7f30-a4ff-c0d14bd429f9', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1ceb-7693-a450-cbc750a78c9a', 'anonymous'),
  ('019d3dab-1d8e-7c8a-abb3-a37d3ed3f070', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1d7e-7715-87ad-f84cbaf8659d', 'administrator'),
  ('019d3dab-1d9f-7fe8-9536-0064938ec35a', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1d7e-7715-87ad-f84cbaf8659d', 'authenticated'),
  ('019d3dab-1db1-7a88-b349-dd820bceab13', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-1d7e-7715-87ad-f84cbaf8659d', 'anonymous'),
  ('019d3dab-270f-782a-b6e8-5b00ca864ae6', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2701-792f-9b98-c31129eaf70e', 'administrator'),
  ('019d3dab-2721-794c-ab80-56d4e01ce68c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2701-792f-9b98-c31129eaf70e', 'authenticated'),
  ('019d3dab-2733-7519-9051-47c833a9bc0e', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-2701-792f-9b98-c31129eaf70e', 'anonymous'),
  ('019d3dab-27b8-7947-8876-9107b705c0a6', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-27a3-7c0c-85f7-b500af68c433', 'administrator'),
  ('019d3dab-27ce-7d34-9af3-bcd5284132cf', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-27a3-7c0c-85f7-b500af68c433', 'authenticated'),
  ('019d3dab-27e1-75b9-a3a9-a9536668a774', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-27a3-7c0c-85f7-b500af68c433', 'anonymous'),
  ('019d3dab-8652-7a4d-b519-5039b33ef9f1', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-863e-765e-a862-79daa7dfbec1', 'administrator'),
  ('019d3dab-866b-7581-95c3-d1f775afe5df', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-863e-765e-a862-79daa7dfbec1', 'authenticated'),
  ('019d3dab-8685-7d6c-8cce-7922a34ff777', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-863e-765e-a862-79daa7dfbec1', 'anonymous'),
  ('019d3dab-89aa-757b-bef3-5b487c5f6620', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-8997-7974-bdb2-960a100e027f', 'administrator'),
  ('019d3dab-89c1-7a64-8a75-88b8355d816f', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-8997-7974-bdb2-960a100e027f', 'authenticated'),
  ('019d3dab-89d8-7c92-86a8-e6fdb39d0f33', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-8997-7974-bdb2-960a100e027f', 'anonymous'),
  ('019d3dab-98f3-71a7-8fc8-eeb0d517fffa', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-98e0-7333-adad-3a1c4c4fa3ca', 'administrator'),
  ('019d3dab-990a-79ea-8cfc-99b2b07b0b1c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-98e0-7333-adad-3a1c4c4fa3ca', 'authenticated'),
  ('019d3dab-9921-79f4-b016-ee21f98dc00b', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-98e0-7333-adad-3a1c4c4fa3ca', 'anonymous'),
  ('019d3dab-9cb0-713c-b5db-9bf3c8d5a410', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9c9d-733f-913c-3c22ae0a3f7a', 'administrator'),
  ('019d3dab-9cc9-700b-84e9-40d97e4496f6', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9c9d-733f-913c-3c22ae0a3f7a', 'authenticated'),
  ('019d3dab-9ce1-72f4-9719-faf41336a3ae', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9c9d-733f-913c-3c22ae0a3f7a', 'anonymous'),
  ('019d3dab-9df0-73a8-972a-212e69add605', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9dd9-7ffe-b2b1-328cc7a0158d', 'administrator'),
  ('019d3dab-9e06-79de-b313-88e50e3de91c', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9dd9-7ffe-b2b1-328cc7a0158d', 'authenticated'),
  ('019d3dab-9e1b-7dd6-a7ed-85cde357aa34', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9dd9-7ffe-b2b1-328cc7a0158d', 'anonymous'),
  ('019d3dab-9eb8-7d4e-93d8-f7d4c38ffe78', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9ea3-7c9d-966a-ab7fe635c56f', 'administrator'),
  ('019d3dab-9ece-71d0-bedd-51449e84a7d6', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9ea3-7c9d-966a-ab7fe635c56f', 'authenticated'),
  ('019d3dab-9ee5-7790-9793-d805185cc26b', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-9ea3-7c9d-966a-ab7fe635c56f', 'anonymous'),
  ('019d3dab-abf5-76ea-be5c-394c3d8a110f', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-abe2-758c-95b6-5ac57d5513cf', 'administrator'),
  ('019d3dab-ac0c-7af0-952f-ded0fe28fa84', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-abe2-758c-95b6-5ac57d5513cf', 'authenticated'),
  ('019d3dab-ac25-7241-b667-6bd5454fbb21', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-abe2-758c-95b6-5ac57d5513cf', 'anonymous'),
  ('019d3dab-acd2-7ff5-85c9-537e7b2958e0', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-acbb-7f33-839e-21262a330532', 'administrator'),
  ('019d3dab-ace9-74f1-a138-cb3e11f4a716', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-acbb-7f33-839e-21262a330532', 'authenticated'),
  ('019d3dab-ad02-7cf6-8a15-871aa5c63d8f', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-acbb-7f33-839e-21262a330532', 'anonymous'),
  ('019d3dab-c0d3-7740-abe7-8b27d250f5ef', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-c0be-79df-a1d2-4105df8900dd', 'administrator'),
  ('019d3dab-c0ea-77f2-95f2-f6d2468e4cab', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-c0be-79df-a1d2-4105df8900dd', 'authenticated'),
  ('019d3dab-c102-7384-8632-dba2b17ab4c5', '019d3daa-fe1f-718c-ac17-5692dc771810', '019d3dab-c0be-79df-a1d2-4105df8900dd', 'anonymous');


SET session_replication_role TO DEFAULT;



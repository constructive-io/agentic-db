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
  ('019d20cd-7759-7942-a847-0f8747216641', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7734-7db9-aef3-cff73c2e9017', 'administrator'),
  ('019d20cd-776d-76c8-bc08-669e1c0bd6e3', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7734-7db9-aef3-cff73c2e9017', 'authenticated'),
  ('019d20cd-777d-769d-9f80-c4e636865f48', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7734-7db9-aef3-cff73c2e9017', 'anonymous'),
  ('019d20cd-77e4-7415-a20a-f774c3aeb18e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7737-7669-9538-212258ab0cf6', 'administrator'),
  ('019d20cd-77f3-7e38-8be8-78ae0a5a611d', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7737-7669-9538-212258ab0cf6', 'authenticated'),
  ('019d20cd-7803-7e3e-9422-4827561519be', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7737-7669-9538-212258ab0cf6', 'anonymous'),
  ('019d20cd-786d-7376-b048-a9f965edc6ae', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-785e-7b1f-a03f-2bcbd7bd263e', 'administrator'),
  ('019d20cd-787d-7358-af98-7451e55bbdad', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-785e-7b1f-a03f-2bcbd7bd263e', 'authenticated'),
  ('019d20cd-788d-7676-a2c8-513cffd9a77a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-785e-7b1f-a03f-2bcbd7bd263e', 'anonymous'),
  ('019d20cd-78f4-70b9-9663-dfcbd03facce', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-78e4-7f37-a28f-380b9fd2a60f', 'administrator'),
  ('019d20cd-7906-72c1-8868-6272dd2a6a7b', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-78e4-7f37-a28f-380b9fd2a60f', 'authenticated'),
  ('019d20cd-7917-7f34-950b-d539903008e2', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-78e4-7f37-a28f-380b9fd2a60f', 'anonymous'),
  ('019d20cd-799a-7bb3-ab76-f0be6c74c0ff', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7989-7590-b1bd-5347d43beb9d', 'administrator'),
  ('019d20cd-79ac-7a4b-a413-5b63c787102c', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7989-7590-b1bd-5347d43beb9d', 'authenticated'),
  ('019d20cd-79be-7755-8cd2-bb42928430c4', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7989-7590-b1bd-5347d43beb9d', 'anonymous'),
  ('019d20cd-7d8e-7ec6-8bdb-27e6668f5ec4', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7d80-7824-a07d-cdd3cd495d95', 'administrator'),
  ('019d20cd-7d9f-74f6-8dde-2d1ac85f165f', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7d80-7824-a07d-cdd3cd495d95', 'authenticated'),
  ('019d20cd-7daf-7f20-b342-010ef117c435', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7d80-7824-a07d-cdd3cd495d95', 'anonymous'),
  ('019d20cd-7f8f-7cca-b27a-c76689e74240', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7f83-756f-beec-4c80721bb185', 'administrator'),
  ('019d20cd-7f9f-7ca4-8cab-0603713adad4', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7f83-756f-beec-4c80721bb185', 'authenticated'),
  ('019d20cd-7fb0-759a-95d4-8038dae05c7a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-7f83-756f-beec-4c80721bb185', 'anonymous'),
  ('019d20cd-801b-7ab5-bc39-135549bc039f', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-800c-7d58-86d7-7f79ef279fdc', 'administrator'),
  ('019d20cd-802c-708b-a461-874dc33ccea9', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-800c-7d58-86d7-7f79ef279fdc', 'authenticated'),
  ('019d20cd-803c-7f66-880c-826164845214', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-800c-7d58-86d7-7f79ef279fdc', 'anonymous'),
  ('019d20cd-8373-748f-91f1-152a3fe52be8', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8367-728f-934d-dda7aac19fad', 'administrator'),
  ('019d20cd-8383-7968-8714-d9f49615aaef', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8367-728f-934d-dda7aac19fad', 'authenticated'),
  ('019d20cd-8394-7517-b081-1cce026b1307', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8367-728f-934d-dda7aac19fad', 'anonymous'),
  ('019d20cd-83ff-7621-8115-4ce5a5ad52db', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-83f0-7511-8493-096051b60318', 'administrator'),
  ('019d20cd-840f-7d33-a49e-236e26b40de1', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-83f0-7511-8493-096051b60318', 'authenticated'),
  ('019d20cd-8420-7ea5-804d-20d8a8569bbc', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-83f0-7511-8493-096051b60318', 'anonymous'),
  ('019d20cd-871f-72a9-b580-12d1746eafc8', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8712-70a5-a537-f9df3e9c5af1', 'administrator'),
  ('019d20cd-8730-7530-aec3-ad9705e8ee7a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8712-70a5-a537-f9df3e9c5af1', 'authenticated'),
  ('019d20cd-8740-7f28-9745-e6efa0b92ed2', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-8712-70a5-a537-f9df3e9c5af1', 'anonymous'),
  ('019d20cd-96df-7579-a7b9-7736a77761f5', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-96d1-7340-a5a1-f4a157852688', 'administrator'),
  ('019d20cd-96f0-7a15-b6d6-0035eaef1ff4', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-96d1-7340-a5a1-f4a157852688', 'authenticated'),
  ('019d20cd-9702-7776-b190-94b38c8f01d2', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-96d1-7340-a5a1-f4a157852688', 'anonymous'),
  ('019d20cd-9778-7130-b43a-547f6f4f1eca', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-9768-738c-9adb-ae0eac103b6f', 'administrator'),
  ('019d20cd-9788-792b-9f0b-1bf849d8538d', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-9768-738c-9adb-ae0eac103b6f', 'authenticated'),
  ('019d20cd-979a-75a8-9730-b58d8cfd13a1', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-9768-738c-9adb-ae0eac103b6f', 'anonymous'),
  ('019d20cd-a124-7fa0-a092-1538f03095da', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a115-7835-b894-11934151e604', 'administrator'),
  ('019d20cd-a137-7a5d-9850-ef8ec4e2499e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a115-7835-b894-11934151e604', 'authenticated'),
  ('019d20cd-a149-7e49-9217-1232ad299053', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a115-7835-b894-11934151e604', 'anonymous'),
  ('019d20cd-a1c8-7538-af33-4580c463a533', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a1b6-76ee-aa9a-49abc7abd4ce', 'administrator'),
  ('019d20cd-a1df-7336-b701-19c5e600cc52', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a1b6-76ee-aa9a-49abc7abd4ce', 'authenticated'),
  ('019d20cd-a1f2-74e7-8fce-a37abbf50abd', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20cd-a1b6-76ee-aa9a-49abc7abd4ce', 'anonymous'),
  ('019d20ce-00e5-76b0-94a1-f71f63fdd89a', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-00cd-7de9-ac2f-df41e132f181', 'administrator'),
  ('019d20ce-0100-7346-920a-3599884a1546', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-00cd-7de9-ac2f-df41e132f181', 'authenticated'),
  ('019d20ce-0119-7593-839f-fc8d7907aa24', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-00cd-7de9-ac2f-df41e132f181', 'anonymous'),
  ('019d20ce-0462-738d-a497-5a6b792cb4e8', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-044e-70ee-9930-99df038c7fd4', 'administrator'),
  ('019d20ce-0479-7c8a-ba80-87fa449477e7', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-044e-70ee-9930-99df038c7fd4', 'authenticated'),
  ('019d20ce-0490-7a76-b50c-6974afca3919', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-044e-70ee-9930-99df038c7fd4', 'anonymous'),
  ('019d20ce-147b-74f5-a39f-2177382d64d2', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1466-7de4-901f-669c732ca9d2', 'administrator'),
  ('019d20ce-1493-7973-a1a6-ffc89897a1f9', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1466-7de4-901f-669c732ca9d2', 'authenticated'),
  ('019d20ce-14ac-7be0-b9ea-97facba44890', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1466-7de4-901f-669c732ca9d2', 'anonymous'),
  ('019d20ce-1879-7041-8167-bd9140f863e0', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1863-7917-acc8-8e111e137cd1', 'administrator'),
  ('019d20ce-1892-78cc-af0f-c5d631d857d1', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1863-7917-acc8-8e111e137cd1', 'authenticated'),
  ('019d20ce-18aa-74f2-8ba2-d5c7b48b585d', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1863-7917-acc8-8e111e137cd1', 'anonymous'),
  ('019d20ce-19cf-7ff1-b18c-c00ec5b40771', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-19b6-7f06-8b7a-6fb6ff1d8cf1', 'administrator'),
  ('019d20ce-19e9-7cc4-aad2-ce038d51c746', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-19b6-7f06-8b7a-6fb6ff1d8cf1', 'authenticated'),
  ('019d20ce-1a03-759c-ae73-b5f8d1299467', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-19b6-7f06-8b7a-6fb6ff1d8cf1', 'anonymous'),
  ('019d20ce-1abb-725a-8f57-177e83a89e4e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1aa3-7f70-8343-8ef4750e37a1', 'administrator'),
  ('019d20ce-1ad4-70f5-9812-d1f40f255325', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1aa3-7f70-8343-8ef4750e37a1', 'authenticated'),
  ('019d20ce-1aef-77f7-84b2-f3928137387c', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-1aa3-7f70-8343-8ef4750e37a1', 'anonymous'),
  ('019d20ce-294a-7729-a77d-7da2b62a95eb', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2936-73b8-b230-6265d0ac39d1', 'administrator'),
  ('019d20ce-2965-7919-bede-8be79f89cc98', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2936-73b8-b230-6265d0ac39d1', 'authenticated'),
  ('019d20ce-297e-78d7-abdb-c54d812cfb19', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2936-73b8-b230-6265d0ac39d1', 'anonymous'),
  ('019d20ce-2a3a-7965-91e3-b1cefdb501f9', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2a20-7b18-938c-08072bcf174b', 'administrator'),
  ('019d20ce-2a53-7129-bc2f-ff91c5f91c3d', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2a20-7b18-938c-08072bcf174b', 'authenticated'),
  ('019d20ce-2a6d-78c2-b442-6eb29f76c3c0', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-2a20-7b18-938c-08072bcf174b', 'anonymous'),
  ('019d20ce-406d-7424-a633-60eb4ef4532e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-4056-7d86-8b16-56eae37cb455', 'administrator'),
  ('019d20ce-4085-7a81-8efa-2ed9cfd94a6e', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-4056-7d86-8b16-56eae37cb455', 'authenticated'),
  ('019d20ce-409e-73f8-8103-dc57514c7557', '019d20cd-7722-776e-8fb8-f96db2895639', '019d20ce-4056-7d86-8b16-56eae37cb455', 'anonymous');


SET session_replication_role TO DEFAULT;



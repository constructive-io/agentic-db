-- Deploy: schemas/agentic_db_app_public/tables/contact_images/indexes/contact_images_image_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/contact_images/table
-- requires: schemas/agentic_db_app_public/schema/default_function_privs/anonymous
-- requires: schemas/agentic_db_app_public/tables/contact_images/columns/image_id/column


CREATE INDEX contact_images_image_id_idx ON agentic_db_app_public.contact_images USING BTREE ( image_id );


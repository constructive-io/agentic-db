-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/indexes/email_attachments_entity_id_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/email_attachments/table
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_attachments/columns/entity_id/column


CREATE INDEX email_attachments_entity_id_idx ON agentic_db_app_public.email_attachments USING BTREE ( entity_id );


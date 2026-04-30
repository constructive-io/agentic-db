-- Deploy: schemas/agentic_db_app_public/tables/email_attachments/columns/created_at/alterations/alt0000000649
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/indexes/places_category_idx
-- requires: schemas/agentic_db_app_public/tables/email_attachments/columns/created_at/column


COMMENT ON COLUMN agentic_db_app_public.email_attachments.created_at IS 'Timestamp when this record was created';


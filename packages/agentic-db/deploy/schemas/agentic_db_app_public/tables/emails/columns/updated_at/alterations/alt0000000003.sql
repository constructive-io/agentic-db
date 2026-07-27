-- Deploy: schemas/agentic_db_app_public/tables/emails/columns/updated_at/alterations/alt0000000003
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/emails/columns/updated_at/column


COMMENT ON COLUMN agentic_db_app_public.emails.updated_at IS 'Timestamp when this record was last updated';


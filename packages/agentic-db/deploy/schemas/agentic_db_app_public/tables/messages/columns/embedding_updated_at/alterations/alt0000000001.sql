-- Deploy: schemas/agentic_db_app_public/tables/messages/columns/embedding_updated_at/alterations/alt0000000001
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/messages/columns/embedding_updated_at/column


COMMENT ON COLUMN agentic_db_app_public.messages.embedding_updated_at IS E'@@behavior -insert -update';


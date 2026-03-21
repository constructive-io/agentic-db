-- Deploy: schemas/agentic_db_app_public/tables/integrations/indexes/integrations_provider_idx
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/integrations/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/provider/column
-- requires: schemas/agentic_db_app_public/tables/documents/indexes/documents_last_accessed_at_idx


CREATE INDEX integrations_provider_idx ON agentic_db_app_public.integrations USING BTREE ( provider );


-- Deploy: schemas/agentic_db_app_public/tables/event_links/columns/id/alterations/alt0000005755
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/event_links/table
-- requires: schemas/agentic_db_app_public/tables/event_links/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/embedding_stale/alterations/alt0000005753


ALTER TABLE agentic_db_app_public.event_links 
  ALTER COLUMN id SET NOT NULL;


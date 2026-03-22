-- Deploy: schemas/agentic_db_app_public/tables/company_links/columns/entity_id/alterations/alt0000001072
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/company_links/table
-- requires: schemas/agentic_db_app_public/tables/company_links/columns/entity_id/column
-- requires: schemas/agentic_db_app_public/tables/contact_links/columns/embedding_stale/alterations/alt0000001068


ALTER TABLE "agentic_db_app_public".company_links 
  ALTER COLUMN entity_id SET NOT NULL;


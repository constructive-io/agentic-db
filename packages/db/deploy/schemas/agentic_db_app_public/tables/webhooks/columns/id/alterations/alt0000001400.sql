-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/id/alterations/alt0000001400
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/last_synced_at/column



ALTER TABLE "agentic_db_app_public".webhooks 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();


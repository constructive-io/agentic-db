-- Deploy: schemas/agentic_db_app_public/tables/webhooks/grants/authenticated/delete/grant
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/integrations/columns/last_synced_at/column


GRANT DELETE ON "agentic_db_app_public".webhooks TO authenticated;


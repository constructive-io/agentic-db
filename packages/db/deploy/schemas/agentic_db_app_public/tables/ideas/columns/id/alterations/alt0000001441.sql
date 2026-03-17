-- Deploy: schemas/agentic_db_app_public/tables/ideas/columns/id/alterations/alt0000001441
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/ideas/table
-- requires: schemas/agentic_db_app_public/tables/ideas/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/constraints/webhooks_integration_id_fkey/constraint



ALTER TABLE "agentic_db_app_public".ideas 
    ALTER COLUMN id SET DEFAULT uuid_generate_v4 ();


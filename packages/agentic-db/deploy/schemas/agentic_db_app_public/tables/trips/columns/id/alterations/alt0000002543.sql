-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/id/alterations/alt0000002543
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/id/column
-- requires: schemas/agentic_db_app_public/tables/billing_subscriptions/columns/notes/column



ALTER TABLE "agentic_db_app_public".trips 
    ALTER COLUMN id SET DEFAULT uuidv7();


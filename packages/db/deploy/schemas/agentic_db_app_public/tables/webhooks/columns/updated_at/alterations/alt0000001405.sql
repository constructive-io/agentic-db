-- Deploy: schemas/agentic_db_app_public/tables/webhooks/columns/updated_at/alterations/alt0000001405
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/webhooks/table
-- requires: schemas/agentic_db_app_public/tables/webhooks/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/webhooks/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".webhooks 
    ALTER COLUMN updated_at SET DEFAULT now();


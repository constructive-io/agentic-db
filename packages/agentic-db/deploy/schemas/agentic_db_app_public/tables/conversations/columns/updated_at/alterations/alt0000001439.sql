-- Deploy: schemas/agentic_db_app_public/tables/conversations/columns/updated_at/alterations/alt0000001439
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/conversations/table
-- requires: schemas/agentic_db_app_public/tables/conversations/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/conversations/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".conversations 
    ALTER COLUMN updated_at SET DEFAULT now();


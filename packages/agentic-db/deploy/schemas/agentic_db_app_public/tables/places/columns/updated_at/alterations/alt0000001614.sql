-- Deploy: schemas/agentic_db_app_public/tables/places/columns/updated_at/alterations/alt0000001614
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/places/table
-- requires: schemas/agentic_db_app_public/tables/places/columns/updated_at/column
-- requires: schemas/agentic_db_app_public/tables/places/policies/auth_del_entity_membership/policy



ALTER TABLE "agentic_db_app_public".places 
    ALTER COLUMN updated_at SET DEFAULT now();


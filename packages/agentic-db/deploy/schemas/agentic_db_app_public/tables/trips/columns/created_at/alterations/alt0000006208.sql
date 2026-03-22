-- Deploy: schemas/agentic_db_app_public/tables/trips/columns/created_at/alterations/alt0000006208
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/trips/table
-- requires: schemas/agentic_db_app_public/tables/trips/columns/created_at/column
-- requires: schemas/agentic_db_app_public/tables/trips/policies/auth_del_entity_membership/policy



ALTER TABLE agentic_db_app_public.trips 
    ALTER COLUMN created_at SET DEFAULT now();


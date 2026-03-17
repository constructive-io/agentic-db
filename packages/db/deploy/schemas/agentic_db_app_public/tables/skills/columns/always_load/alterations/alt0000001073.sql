-- Deploy: schemas/agentic_db_app_public/tables/skills/columns/always_load/alterations/alt0000001073
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_app_public/schema
-- requires: schemas/agentic_db_app_public/tables/skills/table
-- requires: schemas/agentic_db_app_public/tables/skills/columns/always_load/column
-- requires: schemas/agentic_db_app_public/tables/skills/columns/prerequisites/column



ALTER TABLE "agentic_db_app_public".skills 
    ALTER COLUMN always_load SET DEFAULT false;


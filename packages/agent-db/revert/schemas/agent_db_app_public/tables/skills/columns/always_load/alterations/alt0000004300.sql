-- Revert: schemas/agent_db_app_public/tables/skills/columns/always_load/alterations/alt0000004300




ALTER TABLE "agent_db_app_public".skills 
    ALTER COLUMN always_load DROP DEFAULT;




-- Revert: schemas/agent_db_app_public/tables/companies/columns/updated_at/alterations/alt0000001726




ALTER TABLE "agent_db_app_public".companies 
    ALTER COLUMN updated_at DROP DEFAULT;




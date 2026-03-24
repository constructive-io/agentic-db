-- Revert: schemas/agentic_db_memberships_public/tables/app_memberships/columns/granted/alterations/alt0000000117


ALTER TABLE "agentic_db_memberships_public".app_memberships 
  ALTER COLUMN granted DROP NOT NULL;



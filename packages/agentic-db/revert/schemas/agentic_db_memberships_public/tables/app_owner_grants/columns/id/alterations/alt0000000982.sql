-- Revert: schemas/agentic_db_memberships_public/tables/app_owner_grants/columns/id/alterations/alt0000000982


ALTER TABLE "agentic_db_memberships_public".app_owner_grants 
  ALTER COLUMN id DROP NOT NULL;



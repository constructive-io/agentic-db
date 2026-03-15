-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/updated_at/alterations/alt0000000235


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles 
  ALTER COLUMN updated_at DROP DEFAULT;



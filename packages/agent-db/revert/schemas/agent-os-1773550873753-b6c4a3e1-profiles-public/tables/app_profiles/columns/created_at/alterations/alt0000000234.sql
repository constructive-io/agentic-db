-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/created_at/alterations/alt0000000234


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles 
  ALTER COLUMN created_at DROP DEFAULT;



-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/is_default/alterations/alt0000000231


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles 
  ALTER COLUMN is_default DROP NOT NULL;



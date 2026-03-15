-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profiles/columns/slug/column


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profiles 
  DROP COLUMN slug RESTRICT;



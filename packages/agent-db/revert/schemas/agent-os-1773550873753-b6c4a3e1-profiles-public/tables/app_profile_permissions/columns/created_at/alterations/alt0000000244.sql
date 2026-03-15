-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/app_profile_permissions/columns/created_at/alterations/alt0000000244


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".app_profile_permissions 
  ALTER COLUMN created_at DROP DEFAULT;



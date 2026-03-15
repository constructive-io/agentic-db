-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/columns/updated_at/alterations/alt0000000464


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_permissions 
  ALTER COLUMN updated_at DROP DEFAULT;



-- Revert: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/columns/permission_id/alterations/alt0000000461


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_permissions 
  ALTER COLUMN permission_id DROP NOT NULL;



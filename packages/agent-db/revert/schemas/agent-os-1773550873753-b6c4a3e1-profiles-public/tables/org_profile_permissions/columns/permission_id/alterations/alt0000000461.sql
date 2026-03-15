-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/columns/permission_id/alterations/alt0000000461


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_permissions 
  ALTER COLUMN permission_id DROP NOT NULL;



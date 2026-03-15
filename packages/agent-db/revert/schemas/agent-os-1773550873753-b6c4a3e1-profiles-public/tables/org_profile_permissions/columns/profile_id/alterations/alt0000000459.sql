-- Revert: schemas/agent-os-1773550873753-b6c4a3e1-profiles-public/tables/org_profile_permissions/columns/profile_id/alterations/alt0000000459


ALTER TABLE "agent-os-1773550873753-b6c4a3e1-profiles-public".org_profile_permissions 
  ALTER COLUMN profile_id DROP NOT NULL;



-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/columns/created_at/alterations/alt0000000463
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/org_profile_permissions/columns/created_at/column


ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".org_profile_permissions 
  ALTER COLUMN created_at SET DEFAULT now();


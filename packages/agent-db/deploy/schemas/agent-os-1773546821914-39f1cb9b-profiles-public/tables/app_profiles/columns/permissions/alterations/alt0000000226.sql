-- Deploy: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/permissions/alterations/alt0000000226
-- made with <3 @ launchql.com

-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/schema
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/table
-- requires: schemas/agent-os-1773546821914-39f1cb9b-profiles-public/tables/app_profiles/columns/permissions/column



ALTER TABLE "agent-os-1773546821914-39f1cb9b-profiles-public".app_profiles 
    ALTER COLUMN permissions SET DEFAULT lpad('', 24, '0')::bit(24);


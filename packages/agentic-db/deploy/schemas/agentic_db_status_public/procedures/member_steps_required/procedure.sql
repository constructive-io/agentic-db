-- Deploy: schemas/agentic_db_status_public/procedures/member_steps_required/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/org_levels/table
-- requires: schemas/agentic_db_status_public/tables/org_achievements/table
-- requires: schemas/agentic_db_status_public/tables/org_level_requirements/table


CREATE FUNCTION agentic_db_status_public.member_steps_required(
  IN level text,
  IN entity_id uuid,
  IN role_id uuid
) RETURNS SETOF agentic_db_status_public.org_level_requirements AS $_PGFN_$
BEGIN
  RETURN QUERY SELECT
    org_level_requirements.id,
    org_level_requirements.name,
    org_level_requirements.level,
    org_level_requirements.description,
    (0 - 1) * (coalesce(org_achievements.count, 0) - org_level_requirements.required_count) AS required_count,
    org_level_requirements.priority,
    org_level_requirements.created_at,
    org_level_requirements.updated_at
  FROM agentic_db_status_public.org_level_requirements FULL OUTER JOIN agentic_db_status_public.org_achievements ON (org_achievements.name = org_level_requirements.name AND org_achievements.actor_id = member_steps_required.role_id) AND org_achievements.entity_id = member_steps_required.entity_id INNER JOIN agentic_db_status_public.org_levels ON org_level_requirements.level = org_levels.name
  WHERE
    org_level_requirements.level = member_steps_required.level AND ((0 - 1) * (coalesce(org_achievements.count, 0) - org_level_requirements.required_count)) > 0
  ORDER BY
    priority ASC;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;


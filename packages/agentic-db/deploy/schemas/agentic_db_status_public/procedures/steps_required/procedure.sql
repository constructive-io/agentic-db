-- Deploy: schemas/agentic_db_status_public/procedures/steps_required/procedure
-- made with <3 @ constructive.io

-- requires: schemas/agentic_db_status_public/schema
-- requires: schemas/agentic_db_status_public/tables/app_levels/table
-- requires: schemas/agentic_db_status_public/tables/app_achievements/table
-- requires: schemas/agentic_db_status_public/tables/app_level_requirements/table


CREATE FUNCTION agentic_db_status_public.steps_required(
  IN level text,
  IN role_id uuid
) RETURNS SETOF agentic_db_status_public.app_level_requirements AS $_PGFN_$
BEGIN
  RETURN QUERY SELECT
    app_level_requirements.id,
    app_level_requirements.name,
    app_level_requirements.level,
    app_level_requirements.description,
    (0 - 1) * (coalesce(app_achievements.count, 0) - app_level_requirements.required_count) AS required_count,
    app_level_requirements.priority,
    app_level_requirements.created_at,
    app_level_requirements.updated_at
  FROM agentic_db_status_public.app_level_requirements FULL OUTER JOIN agentic_db_status_public.app_achievements ON app_achievements.name = app_level_requirements.name AND app_achievements.actor_id = steps_required.role_id INNER JOIN agentic_db_status_public.app_levels ON app_level_requirements.level = app_levels.name
  WHERE
    app_level_requirements.level = steps_required.level AND ((0 - 1) * (coalesce(app_achievements.count, 0) - app_level_requirements.required_count)) > 0
  ORDER BY
    priority ASC;
END;
$_PGFN_$ LANGUAGE plpgsql STABLE;


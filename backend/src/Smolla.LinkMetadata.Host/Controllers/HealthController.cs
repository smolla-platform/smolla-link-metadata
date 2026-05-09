using Microsoft.AspNetCore.Mvc;

namespace Smolla.LinkMetadata.Host.Controllers;

[ApiController]
[Route("api/[controller]")]
public sealed class HealthController : ControllerBase
{
    [HttpGet]
    public IActionResult Get()
    {
        return Ok(new { status = "ok", utc = DateTimeOffset.UtcNow });
    }
}
